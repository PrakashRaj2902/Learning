- name: Update apt cache
  apt:
    update_cache: yes
  when: ansible_os_family == 'Debian'
  tags: 
    - apt-cache
    - install

- name: Install required packages
  apt:
    name: "{{ software_list }}"
    state: present
  when: ansible_os_family == 'Debian'
  notify: Restart nginx
  tags: 
    - packages
    - install

- name: Start and enable Docker
  systemd:
    name: docker
    state: started
    enabled: yes
  when: "'docker.io' in software_list"
  tags:
    - docker
    - install