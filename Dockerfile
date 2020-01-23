FROM centos:centos7.7.1908

# Create a group and user named 'snowman'
RUN useradd -d /home/snowman -m -U snowman

# Install sudo
RUN yum install -y sudo

# Add user snowman to the list of sudoers. No prompt for password.
RUN echo "snowman   ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers

# Switch to 'snowman'
USER snowman

# Install python 3. Python 3 comes with pip
RUN sudo yum install -y python3

# Install OpenSSL and FFI
RUN sudo yum install -y libffi-devel openssl-devel

# Install the Snowflake Connector for Python
RUN pip3 install --upgrade --user snowflake-connector-python

# Install Jupyter Notebook
RUN pip3 install --upgrade --user jupyterlab

# Add local bin to path
ENV PATH "/home/snowman/.local/bin:$PATH"

# Open the mapped port
EXPOSE 8888

# Add local bin to path
ENV PATH "$HOME/.local/bin:$PATH"

