.class final Lcom/android/server/engineer/OneplusEngineerService$kth;
.super Landroid/engineer/OneplusEngineerInternal;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/OneplusEngineerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "kth"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/engineer/OneplusEngineerService;


# direct methods
.method private constructor <init>(Lcom/android/server/engineer/OneplusEngineerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService$kth;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-direct {p0}, Landroid/engineer/OneplusEngineerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/engineer/OneplusEngineerService;Lcom/android/server/engineer/OneplusEngineerService$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/engineer/OneplusEngineerService$kth;-><init>(Lcom/android/server/engineer/OneplusEngineerService;)V

    return-void
.end method


# virtual methods
.method public handleStartActivity(Landroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p2, Landroid/content/ComponentName;

    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p2, p3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$kth;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {p0, p2}, Lcom/android/server/engineer/OneplusEngineerService;->vdb(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public handleStartServiceOrBindService(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$kth;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/engineer/OneplusEngineerService;->oxb(Landroid/content/ComponentName;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method
