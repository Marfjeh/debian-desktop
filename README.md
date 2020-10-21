# debian-desktop
A dockerfile that builds debian buster and the MATE desktop environment with vnc.
This is a forked version that is updated to buster instead of jessie, and removed programs that i dont need.

This repo includes a dockerfile that builds debian buster and the MATE desktop environment.  It is bundled with VNC.


* Clone the repo.

* cd into the cloned directory and build the docker with this command:

```docker build -t debian-desktop - < Dockerfile```

* Run the container with this command:

```docker run -it --rm -p 5901:5901 -e USER=root debian-desktop     bash -c "touch /root/.Xresources && vncserver :1 -geometry 1280x800 -depth 24 && tail -F /root/.vnc/*.log"```

* Connect to the container.  In the vnc connection string, type this:

"ipaddress:1"

The password is "debian".

That's it!

