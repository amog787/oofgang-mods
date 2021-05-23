.class Lcom/android/server/am/les;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/les$you;
    }
.end annotation


# static fields
.field private static final zta:Ljava/lang/String; = "OpBroadcastDelayStartProcessStrategy"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/les$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/les;-><init>()V

    return-void
.end method

.method public static you()Lcom/android/server/am/les;
    .locals 1

    invoke-static {}, Lcom/android/server/am/les$you;->zta()Lcom/android/server/am/les;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zta(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;I)V
    .locals 4

    iget p0, p2, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    :goto_0
    if-ge p0, p3, :cond_3

    iget-object v0, p2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/server/am/BroadcastFilter;

    iget-object v1, v1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_1

    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "OpBroadcastDelayStartProcessStrategy"

    const-string v1, "adjustIfAppNotExist"

    invoke-static {v0, v1}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
