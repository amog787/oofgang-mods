.class public Lcom/android/server/pm/bio;
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

    const-string v0, "1 package all:  DEBUG_* "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys package log all 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "2 package install:  DEBUG_INSTALL "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys package log install 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "3 package remove:   DEBUG_REMOVE "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys package log remove 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "4 package settings: DEBUG_SETTINGS "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys package log settings 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "5 package scan:     DEBUG_PACKAGE_SCANNING "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys package log scan 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "6 package verify:   DEBUG_VERIFY "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys package log verify 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "7 package abi:      DEBUG_ABI_SELECTION "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys package log abi 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "8 package opt:      DEBUG_DEXOPT "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys package log opt 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "9 package match:    DEBUG_INTENT_MATCHING "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys package log match 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "10 package info:    DEBUG_PACKAGE_INFO "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys package log info 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "11 package info:    DEBUG_DOMAIN_VERIFICATION "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys package log domain 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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

    invoke-static {p0}, Lcom/android/server/pm/bio;->you(Ljava/io/PrintWriter;)V

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

    const-string v0, "all"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_UPGRADE:Z

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_BROADCASTS:Z

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_SHOW_INFO:Z

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_VERIFY:Z

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_SHARED_LIBRARIES:Z

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_ABI_SELECTION:Z

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_TRIAGED_MISSING:Z

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_APP_DATA:Z

    goto/16 :goto_1

    :cond_2
    const-string v0, "install"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    goto :goto_1

    :cond_3
    const-string v0, "remove"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    goto :goto_1

    :cond_4
    const-string v0, "settings"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    goto :goto_1

    :cond_5
    const-string v0, "scan"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    goto :goto_1

    :cond_6
    const-string v0, "verify"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_VERIFY:Z

    goto :goto_1

    :cond_7
    const-string v0, "abi"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_ABI_SELECTION:Z

    goto :goto_1

    :cond_8
    const-string v0, "opt"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    goto :goto_1

    :cond_9
    const-string v0, "match"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    goto :goto_1

    :cond_a
    const-string v0, "info"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    goto :goto_1

    :cond_b
    const-string v0, "domain"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    :goto_1
    return-void

    :cond_c
    const-string p1, "Failed! Invalid argument! Type cmd for help: dumpsys package log"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
