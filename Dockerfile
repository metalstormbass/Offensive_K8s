FROM kalilinux/kali-rolling

# Install Utilities 
RUN apt update && apt -y install nmap curl wget netcat-traditional python3-pip

# Install Metasploit
RUN curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall

# Install Kube-Hunter

RUN pip3 install kube-hunter

CMD /bin/bash
