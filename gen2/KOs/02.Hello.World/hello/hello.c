/*
 * Hello World
 * 2nd test
 */

#include <linux/init.h>
#include <linux/module.h>
#include <linux/sched.h>    //for Current Process

//#define KERN_EMERG "<0>" /* system is unusable*/
//#define KERN_ALERT "<1>" /* action must be taken immediately*/
//#define KERN_CRIT "<2>" /* critical conditions*/
//#define KERN_ERR "<3>" /* error conditions*/
//#define KERN_WARNING "<4>" /* warning conditions*/
//#define KERN_NOTICE "<5>" /* normal but significant condition*/
//#define KERN_INFO "<6>" /* informational*/
//#define KERN_DEBUG "<7>" /* debug-level messages*/

MODULE_LICENSE("Dual BSD/GPL");

static int hello_init(void)
{
	printk(KERN_ALERT "Hello, world\n");

	printk(KERN_INFO "The process is \"%s\" (pid %i)\n",
			  current->comm, current->pid);

	printk(KERN_EMERG   "0 -- system is unusable");
	printk(KERN_ALERT   "1 -- action must be taken immediately");
	printk(KERN_CRIT    "2 -- critical conditions");
	printk(KERN_ERR     "3 -- error conditions");
	printk(KERN_WARNING "4 -- warning conditions");
	printk(KERN_NOTICE  "5 -- normal but significant condition");
	printk(KERN_INFO    "6 -- informational");
	printk(KERN_DEBUG   "7 -- debug-level messages");

	return 0;
}

static void hello_exit(void)
{
	printk(KERN_ALERT "Goodbye, cruel world\n");
}

module_init(hello_init);
module_exit(hello_exit);

//END
