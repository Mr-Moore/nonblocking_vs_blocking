VERILOG = iverilog
TARGET = blocking.vcd
TEMP = temp.vvp
$(TARGET) : $(TEMP)
	vvp $(TEMP)
$(TEMP): blocking_tb.v blocking.v
	$(VERILOG) -o $(TEMP) blocking_tb.v blocking.v
clean:
	-del $(TARGET)
	-del $(TEMP)
