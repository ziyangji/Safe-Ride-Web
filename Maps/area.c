int latmax;
int latmin;
int altmax;
int altmin;
int calllat;//user's latitude
int callalt;//user's altitude
if (calllat <= latmax && calllat >= latmin
    && callalt <= altmax && callalt >= altmin){
    //assign service
    }else{
    fprint(stderr,"Service not available in this area");
    }
    
