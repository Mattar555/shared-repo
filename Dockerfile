FROM cp.icr.io/cp/appc/ace-server-prod@sha256:2b8be27ffa0106c66d7bab819a8043bb7e01a7d049ede0df8439f9d42d799685

# takes the base image and bakes in the bar
# Copy in the bar file  
COPY ./gc_bar /home/aceuser/initial-config/bars
RUN mkdir /home/aceuser/external-jars
COPY ./ud_jars /home/aceuser/external-jars
# COPY ./ace/webusers /home/aceuser/initial-config/webusers

RUN ace_compile_bars.sh
