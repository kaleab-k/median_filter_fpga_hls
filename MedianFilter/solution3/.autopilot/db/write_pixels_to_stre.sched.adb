<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>write_pixels_to_stre</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>5</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>in_stream_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>in_stream.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>3</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>in_array</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>in_array</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>4</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>3</id>
						<name>in_array_offset</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_4">
				<Value>
					<Obj>
						<type>1</type>
						<id>4</id>
						<name>out_array</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_5">
				<Value>
					<Obj>
						<type>1</type>
						<id>5</id>
						<name>out_array_out</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>3</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>16</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_6">
				<Value>
					<Obj>
						<type>0</type>
						<id>11</id>
						<name>out_array_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>41</item>
					<item>42</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>12</id>
						<name>in_array_offset_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>43</item>
					<item>44</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>13</id>
						<name></name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>46</item>
					<item>47</item>
					<item>48</item>
				</oprand_edges>
				<opcode>write</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>16</id>
						<name>in_array_offset1_i_i</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>30</bitwidth>
				</Value>
				<oprand_edges>
					<count>4</count>
					<item_version>0</item_version>
					<item>50</item>
					<item>51</item>
					<item>53</item>
					<item>55</item>
				</oprand_edges>
				<opcode>partselect</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>19</id>
						<name>sext_i_i</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>56</item>
				</oprand_edges>
				<opcode>zext</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_11">
				<Value>
					<Obj>
						<type>0</type>
						<id>20</id>
						<name>in_array_addr</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>57</item>
					<item>58</item>
				</oprand_edges>
				<opcode>getelementptr</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_12">
				<Value>
					<Obj>
						<type>0</type>
						<id>21</id>
						<name>in_array_addr_i_i_rd</name>
						<fileName>MedianFilter/median.cpp</fileName>
						<fileDirectory>/home/kinka1/HLS</fileDirectory>
						<lineNumber>6</lineNumber>
						<contextFuncName>write_pixels_to_stream</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="11" tracking_level="0" version="0">
								<first>/home/kinka1/HLS</first>
								<second class_id="12" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="13" tracking_level="0" version="0">
										<first class_id="14" tracking_level="0" version="0">
											<first>MedianFilter/median.cpp</first>
											<second>write_pixels_to_stream</second>
										</first>
										<second>6</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>60</item>
					<item>61</item>
					<item>63</item>
				</oprand_edges>
				<opcode>readreq</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_13">
				<Value>
					<Obj>
						<type>0</type>
						<id>22</id>
						<name></name>
						<fileName>MedianFilter/median.cpp</fileName>
						<fileDirectory>/home/kinka1/HLS</fileDirectory>
						<lineNumber>5</lineNumber>
						<contextFuncName>write_pixels_to_stream</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/kinka1/HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>MedianFilter/median.cpp</first>
											<second>write_pixels_to_stream</second>
										</first>
										<second>5</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>64</item>
				</oprand_edges>
				<opcode>br</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_14">
				<Value>
					<Obj>
						<type>0</type>
						<id>24</id>
						<name>i_i_i</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>i</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>19</bitwidth>
				</Value>
				<oprand_edges>
					<count>4</count>
					<item_version>0</item_version>
					<item>66</item>
					<item>67</item>
					<item>68</item>
					<item>69</item>
				</oprand_edges>
				<opcode>phi</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_15">
				<Value>
					<Obj>
						<type>0</type>
						<id>25</id>
						<name>exitcond_i_i</name>
						<fileName>MedianFilter/median.cpp</fileName>
						<fileDirectory>/home/kinka1/HLS</fileDirectory>
						<lineNumber>5</lineNumber>
						<contextFuncName>write_pixels_to_stream</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/kinka1/HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>MedianFilter/median.cpp</first>
											<second>write_pixels_to_stream</second>
										</first>
										<second>5</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>70</item>
					<item>72</item>
				</oprand_edges>
				<opcode>icmp</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_16">
				<Value>
					<Obj>
						<type>0</type>
						<id>26</id>
						<name>i</name>
						<fileName>MedianFilter/median.cpp</fileName>
						<fileDirectory>/home/kinka1/HLS</fileDirectory>
						<lineNumber>5</lineNumber>
						<contextFuncName>write_pixels_to_stream</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/kinka1/HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>MedianFilter/median.cpp</first>
											<second>write_pixels_to_stream</second>
										</first>
										<second>5</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>i</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>19</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>73</item>
					<item>75</item>
				</oprand_edges>
				<opcode>add</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_17">
				<Value>
					<Obj>
						<type>0</type>
						<id>27</id>
						<name></name>
						<fileName>MedianFilter/median.cpp</fileName>
						<fileDirectory>/home/kinka1/HLS</fileDirectory>
						<lineNumber>5</lineNumber>
						<contextFuncName>write_pixels_to_stream</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/kinka1/HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>MedianFilter/median.cpp</first>
											<second>write_pixels_to_stream</second>
										</first>
										<second>5</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>76</item>
					<item>77</item>
					<item>78</item>
				</oprand_edges>
				<opcode>br</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_18">
				<Value>
					<Obj>
						<type>0</type>
						<id>33</id>
						<name>temp</name>
						<fileName>MedianFilter/median.cpp</fileName>
						<fileDirectory>/home/kinka1/HLS</fileDirectory>
						<lineNumber>6</lineNumber>
						<contextFuncName>write_pixels_to_stream</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/kinka1/HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>MedianFilter/median.cpp</first>
											<second>write_pixels_to_stream</second>
										</first>
										<second>6</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>temp</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>80</item>
					<item>81</item>
					<item>291</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_19">
				<Value>
					<Obj>
						<type>0</type>
						<id>34</id>
						<name></name>
						<fileName>MedianFilter/median.cpp</fileName>
						<fileDirectory>/home/kinka1/HLS</fileDirectory>
						<lineNumber>7</lineNumber>
						<contextFuncName>write_pixels_to_stream</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/kinka1/HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>MedianFilter/median.cpp</first>
											<second>write_pixels_to_stream</second>
										</first>
										<second>7</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>83</item>
					<item>84</item>
					<item>85</item>
				</oprand_edges>
				<opcode>write</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_20">
				<Value>
					<Obj>
						<type>0</type>
						<id>36</id>
						<name></name>
						<fileName>MedianFilter/median.cpp</fileName>
						<fileDirectory>/home/kinka1/HLS</fileDirectory>
						<lineNumber>5</lineNumber>
						<contextFuncName>write_pixels_to_stream</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/kinka1/HLS</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>MedianFilter/median.cpp</first>
											<second>write_pixels_to_stream</second>
										</first>
										<second>5</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>86</item>
				</oprand_edges>
				<opcode>br</opcode>
				<m_Display>0</m_Display>
			</item>
			<item class_id_reference="9" object_id="_21">
				<Value>
					<Obj>
						<type>0</type>
						<id>38</id>
						<name></name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>6</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_22">
				<Value>
					<Obj>
						<type>2</type>
						<id>52</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>2</content>
			</item>
			<item class_id_reference="16" object_id="_23">
				<Value>
					<Obj>
						<type>2</type>
						<id>54</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>31</content>
			</item>
			<item class_id_reference="16" object_id="_24">
				<Value>
					<Obj>
						<type>2</type>
						<id>62</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>360000</content>
			</item>
			<item class_id_reference="16" object_id="_25">
				<Value>
					<Obj>
						<type>2</type>
						<id>65</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>19</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>0</content>
			</item>
			<item class_id_reference="16" object_id="_26">
				<Value>
					<Obj>
						<type>2</type>
						<id>71</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>19</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>360000</content>
			</item>
			<item class_id_reference="16" object_id="_27">
				<Value>
					<Obj>
						<type>2</type>
						<id>74</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>19</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>4</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_28">
				<Obj>
					<type>3</type>
					<id>23</id>
					<name>entry</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>8</count>
					<item_version>0</item_version>
					<item>11</item>
					<item>12</item>
					<item>13</item>
					<item>16</item>
					<item>19</item>
					<item>20</item>
					<item>21</item>
					<item>22</item>
				</node_objs>
			</item>
			<item class_id_reference="18" object_id="_29">
				<Obj>
					<type>3</type>
					<id>28</id>
					<name></name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>4</count>
					<item_version>0</item_version>
					<item>24</item>
					<item>25</item>
					<item>26</item>
					<item>27</item>
				</node_objs>
			</item>
			<item class_id_reference="18" object_id="_30">
				<Obj>
					<type>3</type>
					<id>37</id>
					<name></name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>3</count>
					<item_version>0</item_version>
					<item>33</item>
					<item>34</item>
					<item>36</item>
				</node_objs>
			</item>
			<item class_id_reference="18" object_id="_31">
				<Obj>
					<type>3</type>
					<id>39</id>
					<name>.exit</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>1</count>
					<item_version>0</item_version>
					<item>38</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>33</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_32">
				<id>42</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>11</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_33">
				<id>44</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>12</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_34">
				<id>47</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>13</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_35">
				<id>48</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>13</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_36">
				<id>51</id>
				<edge_type>1</edge_type>
				<source_obj>12</source_obj>
				<sink_obj>16</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_37">
				<id>53</id>
				<edge_type>1</edge_type>
				<source_obj>52</source_obj>
				<sink_obj>16</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_38">
				<id>55</id>
				<edge_type>1</edge_type>
				<source_obj>54</source_obj>
				<sink_obj>16</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_39">
				<id>56</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>19</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_40">
				<id>57</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>20</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_41">
				<id>58</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>20</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_42">
				<id>61</id>
				<edge_type>1</edge_type>
				<source_obj>20</source_obj>
				<sink_obj>21</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_43">
				<id>63</id>
				<edge_type>1</edge_type>
				<source_obj>62</source_obj>
				<sink_obj>21</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_44">
				<id>64</id>
				<edge_type>2</edge_type>
				<source_obj>28</source_obj>
				<sink_obj>22</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_45">
				<id>66</id>
				<edge_type>1</edge_type>
				<source_obj>65</source_obj>
				<sink_obj>24</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_46">
				<id>67</id>
				<edge_type>2</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>24</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_47">
				<id>68</id>
				<edge_type>1</edge_type>
				<source_obj>26</source_obj>
				<sink_obj>24</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_48">
				<id>69</id>
				<edge_type>2</edge_type>
				<source_obj>37</source_obj>
				<sink_obj>24</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_49">
				<id>70</id>
				<edge_type>1</edge_type>
				<source_obj>24</source_obj>
				<sink_obj>25</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_50">
				<id>72</id>
				<edge_type>1</edge_type>
				<source_obj>71</source_obj>
				<sink_obj>25</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_51">
				<id>73</id>
				<edge_type>1</edge_type>
				<source_obj>24</source_obj>
				<sink_obj>26</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_52">
				<id>75</id>
				<edge_type>1</edge_type>
				<source_obj>74</source_obj>
				<sink_obj>26</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_53">
				<id>76</id>
				<edge_type>1</edge_type>
				<source_obj>25</source_obj>
				<sink_obj>27</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_54">
				<id>77</id>
				<edge_type>2</edge_type>
				<source_obj>37</source_obj>
				<sink_obj>27</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_55">
				<id>78</id>
				<edge_type>2</edge_type>
				<source_obj>39</source_obj>
				<sink_obj>27</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_56">
				<id>81</id>
				<edge_type>1</edge_type>
				<source_obj>20</source_obj>
				<sink_obj>33</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_57">
				<id>84</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>34</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_58">
				<id>85</id>
				<edge_type>1</edge_type>
				<source_obj>33</source_obj>
				<sink_obj>34</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_59">
				<id>86</id>
				<edge_type>2</edge_type>
				<source_obj>28</source_obj>
				<sink_obj>36</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_60">
				<id>287</id>
				<edge_type>2</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>28</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_61">
				<id>288</id>
				<edge_type>2</edge_type>
				<source_obj>28</source_obj>
				<sink_obj>39</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_62">
				<id>289</id>
				<edge_type>2</edge_type>
				<source_obj>28</source_obj>
				<sink_obj>37</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_63">
				<id>290</id>
				<edge_type>2</edge_type>
				<source_obj>37</source_obj>
				<sink_obj>28</sink_obj>
			</item>
			<item class_id_reference="20" object_id="_64">
				<id>291</id>
				<edge_type>4</edge_type>
				<source_obj>21</source_obj>
				<sink_obj>33</sink_obj>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>4</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_65">
			<mId>1</mId>
			<mTag>write_pixels_to_stre</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>3</count>
				<item_version>0</item_version>
				<item>2</item>
				<item>3</item>
				<item>4</item>
			</sub_regions>
			<basic_blocks>
				<count>0</count>
				<item_version>0</item_version>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>360009</mMinLatency>
			<mMaxLatency>-1</mMaxLatency>
			<mIsDfPipe>0</mIsDfPipe>
			<mDfPipe class_id="-1"></mDfPipe>
		</item>
		<item class_id_reference="22" object_id="_66">
			<mId>2</mId>
			<mTag>Entry</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>23</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>6</mMinLatency>
			<mMaxLatency>-1</mMaxLatency>
			<mIsDfPipe>0</mIsDfPipe>
			<mDfPipe class_id="-1"></mDfPipe>
		</item>
		<item class_id_reference="22" object_id="_67">
			<mId>3</mId>
			<mTag>write_pixels_to_stream_loop</mTag>
			<mType>1</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>2</count>
				<item_version>0</item_version>
				<item>28</item>
				<item>37</item>
			</basic_blocks>
			<mII>1</mII>
			<mDepth>3</mDepth>
			<mMinTripCount>360000</mMinTripCount>
			<mMaxTripCount>360000</mMaxTripCount>
			<mMinLatency>360001</mMinLatency>
			<mMaxLatency>-1</mMaxLatency>
			<mIsDfPipe>0</mIsDfPipe>
			<mDfPipe class_id="-1"></mDfPipe>
		</item>
		<item class_id_reference="22" object_id="_68">
			<mId>4</mId>
			<mTag>Return</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>39</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>0</mMinLatency>
			<mMaxLatency>-1</mMaxLatency>
			<mIsDfPipe>0</mIsDfPipe>
			<mDfPipe class_id="-1"></mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="-1"></fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="26" tracking_level="0" version="0">
		<count>16</count>
		<item_version>0</item_version>
		<item class_id="27" tracking_level="0" version="0">
			<first>11</first>
			<second class_id="28" tracking_level="0" version="0">
				<first>6</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>12</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>13</first>
			<second>
				<first>6</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>16</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>19</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>20</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>21</first>
			<second>
				<first>0</first>
				<second>6</second>
			</second>
		</item>
		<item>
			<first>22</first>
			<second>
				<first>6</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>24</first>
			<second>
				<first>7</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>25</first>
			<second>
				<first>7</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>26</first>
			<second>
				<first>7</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>27</first>
			<second>
				<first>7</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>33</first>
			<second>
				<first>8</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>34</first>
			<second>
				<first>9</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>36</first>
			<second>
				<first>9</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>38</first>
			<second>
				<first>8</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="29" tracking_level="0" version="0">
		<count>4</count>
		<item_version>0</item_version>
		<item class_id="30" tracking_level="0" version="0">
			<first>23</first>
			<second class_id="31" tracking_level="0" version="0">
				<first>0</first>
				<second>6</second>
			</second>
		</item>
		<item>
			<first>28</first>
			<second>
				<first>7</first>
				<second>7</second>
			</second>
		</item>
		<item>
			<first>37</first>
			<second>
				<first>8</first>
				<second>9</second>
			</second>
		</item>
		<item>
			<first>39</first>
			<second>
				<first>8</first>
				<second>8</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="32" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="33" tracking_level="1" version="0" object_id="_69">
			<region_name>write_pixels_to_stream_loop</region_name>
			<basic_blocks>
				<count>2</count>
				<item_version>0</item_version>
				<item>28</item>
				<item>37</item>
			</basic_blocks>
			<nodes>
				<count>0</count>
				<item_version>0</item_version>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>8</region_type>
			<interval>1</interval>
			<pipe_depth>3</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="34" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="35" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="36" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="37" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core class_id="38" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>
