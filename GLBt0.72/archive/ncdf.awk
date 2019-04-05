#
# --- awk script that reads a template model plot shell script and produces
# --- the actual shell script for a variety of variables
#

/^setenv Y /  { printf("setenv Y \"%4s\"\n",y)
		next
}

/^setenv T /  { printf("setenv T \"%2s\"\n",t)
		next
}

/^setenv J /  { printf("setenv J \"%3s\"\n",j)
		next
}

/^setenv X /  { printf("setenv X \"%4s\"\n",x)
		next
}

/^setenv P /  { printf("setenv P \"%s\"\n",p)
		next
}

/^setenv R /  { printf("setenv R \"%s\"\n",r)
		next
}

/^setenv EX /  { printf("setenv EX \"%s\"\n",ex)
		next
}

#
# --- All the above actions end with next, so we only get here if none
# --- of the above are true.
#

	      { print
}
