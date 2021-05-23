.class public Lcom/android/server/am/kth;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static you(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "********************** Help begin:**********************"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "1 Activity life circle:DEBUG_SWITCH | DEBUG_PAUSE DEBUG_RESULTS | DEBUG_CLEANUP | DEBUG_STATES"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys activity log life 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "2 App visibility:DEBUG_VISIBILITY | DEBUG_TRANSITION | DEBUG_FOCUS"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys activity log visibility 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "3 Config process:DEBUG_CONFIGURATION"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys activity log config 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "4 Task manage:DEBUG_TASKS | DEBUG_CLEANUP | DEBUG_ADD_REMOVE | DEBUG_SAVED_STATE"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys activity log task 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "5 Broadcast manage:DEBUG_BROADCAST | DEBUG_BROADCAST_BACKGROUND | DEBUG_BROADCAST_LIGHT"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys activity log broadcast 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "6 Service manage:DEBUG_SERVICE | DEBUG_SERVICE_EXECUTING | DEBUG_MU | ActiveServices\'s Log"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys activity log service 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "7 Provider manage:DEBUG_PROVIDER | DEBUG_PERMISSIONS_REVIEW | DEBUG_MU"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys activity log provider 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "8 backup manage:DEBUG_BACKUP"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys activity log backup 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "9 stack manager log:Ams stack & ActivityStackSupervisor & ActivityStack"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys activity log stack 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "10 process manage:DEBUG_PROCESSES | DEBUG_PROCESS_OBSERVERS"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys activity log process 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "11 other not in common use:DEBUG_POWER | DEBUG_THUMBNAILS | DEBUG_OOM_ADJ | DEBUG_LOCKSCREEN | DEBUG_LRU | DEBUG_PSS "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys activity log other 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "********************** Help end.  **********************"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static zta(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dynamicallyConfigLogTag, opti:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", args.length:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p2, 0x0

    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dynamicallyConfigLogTag, args["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    array-length p2, p1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const-string p1, "********** Invalid argument! Get detail help as bellow: **********"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/am/kth;->you(Ljava/io/PrintWriter;)V

    return-void

    :cond_1
    const/4 p2, 0x1

    aget-object p2, p1, p2

    const/4 v0, 0x2

    aget-object p1, p1, v0

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dynamicallyConfigLogTag, tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", on:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "life"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    invoke-static {p2, p1}, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->switchATMSLog(Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_2
    const-string v0, "visibility"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "config"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    goto/16 :goto_2

    :cond_4
    const-string v0, "task"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const-string v0, "broadcast"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_BACKGROUND:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    goto :goto_2

    :cond_6
    const-string v0, "service"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    sput-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    invoke-static {p1}, Lcom/android/server/am/ActiveServices;->dynamicallyUpdateLogTag(Z)V

    goto :goto_2

    :cond_7
    const-string v0, "provider"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    goto :goto_1

    :cond_8
    const-string v0, "backup"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKUP:Z

    goto :goto_2

    :cond_9
    const-string v0, "stack"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1

    :cond_a
    const-string v0, "process"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    goto :goto_2

    :cond_b
    const-string v0, "other"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    sput-boolean p1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    goto/16 :goto_1

    :goto_2
    return-void

    :cond_c
    const-string p1, "Failed! Invalid argument! Type cmd for help: dumpsys activity log"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
