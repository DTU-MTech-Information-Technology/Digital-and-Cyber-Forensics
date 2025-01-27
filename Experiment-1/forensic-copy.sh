# for Kali Linux

dd if=/dev/sda of=capture.img conv=noerror, sync

# dd - The command-line tool used for copying and converting raw data at the block level.
# if - input file
# of - output file
# noerror: Instructs dd to continue copying even if it encounters read errors on the input device. Normally, dd would stop on an error.
# sync: Ensures that if there are errors (e.g., unreadable sectors), they are handled gracefully by padding the output with null bytes, maintaining alignment and file integrity.