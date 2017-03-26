package com.hit.forecast.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
@Entity
public class Example {
		private int id;
		private String name;
		private String desc1;
		private String desc2;
		private String desc3;
		private String desc4;
		private String desc5;
		@Id
		@GeneratedValue
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getDesc1() {
			return desc1;
		}
		public void setDesc1(String desc1) {
			this.desc1 = desc1;
		}
		public String getDesc2() {
			return desc2;
		}
		public void setDesc2(String desc2) {
			this.desc2 = desc2;
		}
		public String getDesc3() {
			return desc3;
		}
		public void setDesc3(String desc3) {
			this.desc3 = desc3;
		}
		public String getDesc4() {
			return desc4;
		}
		public void setDesc4(String desc4) {
			this.desc4 = desc4;
		}
		public String getDesc5() {
			return desc5;
		}
		public void setDesc5(String desc5) {
			this.desc5 = desc5;
		}
		
		
		
		
		
}
