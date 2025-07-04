# Open-Source IC

## NGSPICE

### See Devices and Their Parameters

In the NGSPICE terminal

```ngspice
display
print @n.xm1.nsg13_hv_nmos
```

Some parameters must be explicitly saved:

```ngspice
save @n.xm1.nsg13_hv_nmos[ids]
```

### Plotting

In the NGSPICE terminal

```ngspice
plot n.xm1.nsg13_hv_nmos[ids]
```

### Exporting as text

In the NGSPICE terminal

```ngspice
set wr_singlescale
set wr_vecnames
wrdata sim.txt @n.xm1.nsg13_hv_nmos[ids]
```

For multiple data:

```ngspice
wrdata sim.txt vds vgs @n.xm1.nsg13_hv_nmos[ids]
```