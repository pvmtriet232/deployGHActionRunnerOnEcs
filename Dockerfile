FROM summerwind/actions-runner
WORKDIR /runnertmp
RUN ./config.sh --url https://github.com/pvmtriet232/test-reuse-workflows --token AUHH6XLRGR2W2CQY235TCQDEJTMNO
ENTRYPOINT [ "./run.sh" ]