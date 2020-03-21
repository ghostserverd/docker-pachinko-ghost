FROM rbtr/pachinko as pachinko_base

FROM lsiobase/alpine

COPY --from=pachinko_base /pachinko /app/pachinko
ENTRYPOINT ["/init"]
