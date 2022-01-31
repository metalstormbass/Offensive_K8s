FROM kalilinux/kali-rolling

# Install Utilities 
RUN apt update && apt -y install  nmap curl wget netcat-traditional python3-pip git-all

# Install GoBuster
RUN apt install golang -y && go get github.com/OJ/gobuster &&  mv /root/go/bin/gobuster /usr/bin/gobuster && git clone https://github.com/metalstormbass/KaliLists 

# Install Metasploit
RUN curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall

# Install Kube-Hunter
RUN pip3 install kube-hunter

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
