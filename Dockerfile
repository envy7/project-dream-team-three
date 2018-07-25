FROM python:2.7.15-onbuild
RUN mkdir -p /root/project-dream-team-three/app/web
WORKDIR /root/project-dream-team-three/app/web

COPY . /root/project-dream-team-three/app/web
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD python run.py
