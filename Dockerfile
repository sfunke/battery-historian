FROM gcr.io/android-battery-historian/stable:3.0

# replacing path of some JS Lib in base.html because of 404
# https://github.com/google/battery-historian/issues/185
RUN sed -i s#//www.gstatic.com/external_hosted/d3/v4/d3.js#//cdnjs.cloudflare.com/ajax/libs/d3/4.9.1/d3.min.js#g /gopure/src/github.com/google/battery-historian/templates/base.html