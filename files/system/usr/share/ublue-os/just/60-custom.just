# Set hardened kernel boot parameters
sec-kargs:
    rpm-ostree kargs \
      --append-if-missing="slab_nomerge" \
      --append-if-missing="init_on_alloc=1" \
      --append-if-missing="init_on_free=1" \
      --append-if-missing="page_alloc.shuffle=1" \
      --append-if-missing="pti=on" \
      --append-if-missing="randomize_kstack_offset=on" \
      --append-if-missing="vsyscall=none" \
      --append-if-missing="module.sig_enforce=1" \
      --append-if-missing="lockdown=confidentiality" \
      --append-if-missing="quiet" \
      --append-if-missing="loglevel=0" \
      --append-if-missing="random.trust_cpu=off" \
      --append-if-missing="random.trust_bootloader=off" \
      --append-if-missing="intel_iommu=on" \
      --append-if-missing="amd_iommu=force_isolation" \
      --append-if-missing="iommu=force" \
      --append-if-missing="iommu.passthrough=0" \
      --append-if-missing="iommu.strict=1" \
      --append-if-missing="mitigations=auto,nosmt" \
      --append-if-missing="spectre_v2=on" \
      --append-if-missing="spec_store_bypass_disable=on" \
      --append-if-missing="l1d_flush=on" \
      --append-if-missing="gather_data_sampling=force" \

# Add /etc/vconsole.conf and the tpm2-tss driver to the initramfs
initramfs:
    rpm-ostree initramfs --enable \
      --arg=-I --arg=/etc/vconsole.conf \
      --arg=--force-add --arg=tpm2-tss
