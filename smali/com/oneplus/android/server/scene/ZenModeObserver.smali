.class public Lcom/oneplus/android/server/scene/ZenModeObserver;
.super Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;
.source ""


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "ZenModeObserver"

.field private static sInstance:Lcom/oneplus/android/server/scene/ZenModeObserver;

.field public static whiteListInZenMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/android/server/zenmode/ZenModeInjector$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mModeOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/scene/ZenModeObserver;->DBG:Z

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.android.dialer"

    const-string v2, "com.android.phone"

    const-string v3, "com.oneplus.dialer"

    const-string v4, "com.google.android.dialer"

    const-string v5, "com.oneplus.camera"

    const-string v6, "com.oneplus.gallery"

    const-string v7, "com.android.emergency"

    const-string v8, "com.android.server.telecom"

    const-string v9, "com.google.android.packageinstaller"

    const-string v10, "com.android.permissioncontroller"

    const-string v11, "com.google.android.permissioncontroller"

    const-string v12, "com.oneplus.screenrecord"

    const-string v13, "com.oneplus.brickmode"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oneplus/android/server/scene/ZenModeObserver;->whiteListInZenMode:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ZenModeObserver;->mModeOn:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/ZenModeObserver;->mCallbacks:Ljava/util/List;

    return-void
.end method

.method public static final getInstance()Lcom/oneplus/android/server/scene/ZenModeObserver;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/ZenModeObserver;->sInstance:Lcom/oneplus/android/server/scene/ZenModeObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/scene/ZenModeObserver;

    invoke-direct {v0}, Lcom/oneplus/android/server/scene/ZenModeObserver;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/scene/ZenModeObserver;->sInstance:Lcom/oneplus/android/server/scene/ZenModeObserver;

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/scene/ZenModeObserver;->sInstance:Lcom/oneplus/android/server/scene/ZenModeObserver;

    return-object v0
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/android/server/zenmode/ZenModeInjector$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ZenModeObserver;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isZenModeOn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/ZenModeObserver;->mModeOn:Z

    return p0
.end method

.method public needBlockWakeUp(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/ZenModeObserver;->mModeOn:Z

    const/4 p3, 0x0

    if-eqz p0, :cond_1

    const-string p0, "com.android.systemui"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/oneplus/android/server/scene/ZenModeObserver;->whiteListInZenMode:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return p3
.end method

.method public onConfig(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onStart([Ljava/lang/String;)I
    .locals 3

    sget-boolean p1, Lcom/oneplus/android/server/scene/ZenModeObserver;->DBG:Z

    if-eqz p1, :cond_0

    const-string p1, "ZenModeObserver"

    const-string v0, "zen mode: start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/android/server/scene/ZenModeObserver;->mModeOn:Z

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/oneplus/android/server/scene/ZenModeObserver;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/android/server/scene/ZenModeObserver;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/zenmode/ZenModeInjector$Callback;

    iget-boolean v2, p0, Lcom/oneplus/android/server/scene/ZenModeObserver;->mModeOn:Z

    invoke-interface {v1, v2}, Lcom/oneplus/android/server/zenmode/ZenModeInjector$Callback;->onChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public onStop([Ljava/lang/String;)I
    .locals 3

    sget-boolean p1, Lcom/oneplus/android/server/scene/ZenModeObserver;->DBG:Z

    if-eqz p1, :cond_0

    const-string p1, "ZenModeObserver"

    const-string v0, "zen mode: stop"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/android/server/scene/ZenModeObserver;->mModeOn:Z

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/oneplus/android/server/scene/ZenModeObserver;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/android/server/scene/ZenModeObserver;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/zenmode/ZenModeInjector$Callback;

    iget-boolean v2, p0, Lcom/oneplus/android/server/scene/ZenModeObserver;->mModeOn:Z

    invoke-interface {v1, v2}, Lcom/oneplus/android/server/zenmode/ZenModeInjector$Callback;->onChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public shouldBlockNotifSound(Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/scene/ZenModeObserver;->DBG:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/ZenModeObserver;->mModeOn:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Block notification sound by zen mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZenModeObserver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/ZenModeObserver;->mModeOn:Z

    return p0
.end method
