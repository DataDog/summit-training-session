---
type: "handson"
date: "2016-10-17T08:47:36-04:00"
title: "Custom Metrics"
weight: 7
duration: 30 minutes
description: Add Metrics to YOUR app
draft: true
---

Create a custom application to manipulate images, and monitor it. A Docker image has already been created and published to https://hub.docker.com/r/technovangelist/dd-summit-docker-image-manip/ for this session. This image was created using the following Dockerfile:

    FROM ubuntu:latest

    RUN apt-get update &&\
        apt-get install -y python-dev python-setuptools &&\
        apt-get install -y libtiff5-dev libjpeg8-dev zlib1g-dev \
              libfreetype6-dev liblcms2-dev libwebp-dev tcl8.6-dev \
              tk8.6-dev python-tk python-pip &&\
        pip install pillow watchdog datadog

1. Create a python file called `firsttest.py` with the following contents:

        print "Hello Datadog Summit"

2.  Run the following docker command to ensure that your Docker environment, including the image, is working: `docker run --name firsttest -v $(pwd):/firsttest:rw -t technovangelist/dd-summit-docker-image-manip python /firsttest/firsttest.py`

    Notice what is happening here. You are running a container named firsttest. You are mounting the directory you are in to `/firsttest` in your docker container. You are creating the container from the image located on Docker Hub called `technovangelist/dd-summit-docker-image-manip`. When the container starts, run the Python interpreter on the `firsttest.py` file. If you see `Hello World`, everything is working and you were able to download the image successfully.

1.  Stop and remove the Docker container (`docker stop firsttest;docker rm firsttest`).
2.  Create a new python file called timedimage.py with the following contents:

        import time # for timing functions
        import sys # for CL Args
        import os.path
        from PIL import Image # for image manipulation
        from watchdog.observers import Observer # for watching the directory
        from watchdog.events import FileSystemEventHandler

        class Watcher:
          DIRECTORY_TO_WATCH = sys.argv[1]
          def __init__(self):
            self.observer = Observer()
            print "Watching %s for images" % self.DIRECTORY_TO_WATCH

          def run(self):
            event_handler = Handler()
            self.observer.schedule(event_handler, self.DIRECTORY_TO_WATCH, recursive=True)
            self.observer.start()
            try:
              while True:
                time.sleep(5)
            except:
              self.observer.stop()
              print "Error"

            self.observer.join()

        def convert_files(filepath, size):
          filename = os.path.splitext(os.path.basename(filepath))[0]
          outfilename = "%s/%s-%s.png" % (sys.argv[2], filename, str(size))
          if os.path.isfile(outfilename) == False:
            img = Image.open(filepath)
            im = img.resize((size, size)).save(outfilename, "png")
            print "Saved %s to %s" % (size, outfilename)

        class Handler(FileSystemEventHandler):

          @staticmethod
          def on_any_event(event):
            if event.is_directory:
              return None

            elif event.event_type == 'modified' and event.src_path.endswith('png') == True:
              print "Received modified event - %s." % event.src_path
              convert_files(event.src_path, 100)
              convert_files(event.src_path, 500)
              convert_files(event.src_path, 1000)
              convert_files(event.src_path, 2000)
              convert_files(event.src_path, 5000)

        if __name__ == '__main__':
          w = Watcher()
          w.run()


    This Python script uses the Watchdog library to watch a directory for new PNG files. When it sees that a file is modified, then it saves 5 copies that has been resized to different sizes. 
2.  Create two directories in the same directory you created the above python file. Name them `images` and `out`.
3.  Run the following Docker command: `docker run --name imagemanip -v $(pwd):/timedimage:rw -t technovangelist/dd-summit-docker-image-manip python /timedimage/timedimage.py /timedimage/images /timedimage/out`
    
    Notice whats different here. You have named your volume differently, and you are passing two command line arguments to the python file: the images and out directories.

4.  You should see that the container is watching the images directory. Drag and drop a png file to the images directory. Watch the container process the image. You should also see 5 new copies of the file in the out directory.
5.  Now lets instrument the application and send those metrics to Datadog. Review the [Libraries documentation](http://docs.datadoghq.com/libraries/).
6.  Add the following import statement to the top of the python script: `from datadog import statsd, initialize`.
7.  Update the convert_files function as follows:

        def convert_files(filepath, size):
          start = time.time()
          filename = os.path.splitext(os.path.basename(filepath))[0]
          outfilename = "%s/%s-%s.png" % (sys.argv[2], filename, str(size))
          if os.path.isfile(outfilename) == False:
            img = Image.open(filepath)
            im = img.resize((size, size)).save(outfilename, "png")
            print "Saved %s to %s" % (size, outfilename)
          end = time.time()
          elapsed = end - start
          options = {
            'statsd_host': '172.17.0.3',  
            'statsd_port': 8125
          }
          initialize(**options)
          statsd.gauge('summit.fileconversion.time', elapsed)

8.  Stop and remove the container, then run it again.
9.  Drag and drop an image into the images directory.
10. Open the Datadog application and navigate to the Metrics Summary. Filter for `summit.conversion.time`. It may take a few seconds for the metric to show up.
11. Create a dashboard with a graph that displays this metric.

    This is great but all the values are merged together. Let's add some tags to get more value out of the metrics.

11. Update the `statsd.gauge` line as follows:

        statsd.gauge('summit.fileconversion.time', elapsed, 
          tags=["conversionsize:" + str(size), "conversionfile:" + filename])

12. Stop and remove the container. Run it again.
13. Drag and drop a few images into the images folder.
14. Update your dashboard graph to avg by conversionsize. Save the graph.
15. Click the gear icon on the top right. Choose Edit Template Variables.
16. Enter File for Variable Name. Choose `conversionfile` for Tag Group. Click the **Done** button.
17. Now view the dashboard and change the File to the different file names you have converted.






