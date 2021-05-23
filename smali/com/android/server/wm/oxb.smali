.class public Lcom/android/server/wm/oxb;
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

    const-string v0, "1 Window add or remove:  DEBUG_TASK_MOVEMENT | DEBUG_STACK"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys window log window 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "2 Window fresh: DEBUG_LAYOUT |  DEBUG_VISIBILITY"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys window log fresh 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "3 Animation:DEBUG_ANIM"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys window log anim 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "4 Input envent:DEBUG_INPUT | DEBUG_INPUT_METHOD | DEBUG_DRAG"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys window log input 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "5 Screen status change: DEBUG_SCREENSHOT "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys window log screen 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "7 Wallpaper change:DEBUG_WALLPAPER | DEBUG_WALLPAPER_LIGH"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys window log wallpaper 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "8 Config change:  DEBUG_CONFIGURATION | PROFILE_ORIENTATION"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys window log config 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "9 Trace surface and window: DEBUG_WINDOW_TRACE"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys window log trace 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "10 Surface show change: SHOW_LIGHT_TRANSACTIONS"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys window log surface 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "11 Layer change:DEBUG_LAYERS"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys window log layer 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "12 PhoneWindowManager log:All PhoneWindowManager debug log switch"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "cmd: dumpsys window log policy 0/1"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "********************** Help end.  **********************"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static zta(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 3

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

    invoke-static {p0}, Lcom/android/server/wm/oxb;->you(Ljava/io/PrintWriter;)V

    return-void

    :cond_1
    const/4 p2, 0x1

    aget-object v0, p1, p2

    const/4 v1, 0x2

    aget-object p1, p1, v1

    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dynamicallyConfigLogTag, tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", on:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "window"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sput-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    sput-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    goto/16 :goto_1

    :cond_2
    const-string v1, "fresh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sput-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    sput-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    goto/16 :goto_1

    :cond_3
    const-string v1, "anim"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sput-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    goto/16 :goto_1

    :cond_4
    const-string v1, "input"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sput-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    sput-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    sput-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    goto :goto_1

    :cond_5
    const-string v1, "screen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sput-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    goto :goto_1

    :cond_6
    const-string v1, "wallpaper"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sput-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    sput-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    goto :goto_1

    :cond_7
    const-string v1, "config"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sput-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    goto :goto_1

    :cond_8
    const-string v1, "trace"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sput-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    goto :goto_1

    :cond_9
    const-string v1, "surface"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sput-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    goto :goto_1

    :cond_a
    const-string v1, "layer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sput-boolean p1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    goto :goto_1

    :cond_b
    const-string v1, "policy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {p1, p2}, Lcom/android/server/policy/OpPhoneWindowManager;->switchDynamicLog(ZZ)V

    goto :goto_1

    :cond_c
    const-string p1, "local"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    :goto_1
    return-void

    :cond_d
    const-string p1, "Failed! Invalid argument! Type cmd for help: dumpsys window log"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
