FROM rbtr/pachinko as pachinko_base
FROM ghostserverd/shell2http

COPY --from=pachinko_base /pachinko /app/pachinko
COPY root/ /

ENTRYPOINT ["/init"]
