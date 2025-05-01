# Add /etc/vconsole.conf and the tpm2-tss driver to the initramfs
initramfs:
    rpm-ostree initramfs --enable \
      --arg=-I --arg=/etc/vconsole.conf \
      --arg=--force-add --arg=tpm2-tss
