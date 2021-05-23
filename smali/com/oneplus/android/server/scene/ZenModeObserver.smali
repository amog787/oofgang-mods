.class public Lcom/oneplus/android/server/scene/ZenModeObserver;
.super Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;
.source ""


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "ZenModeObserver"

.field private static final sDefaultWhiteList:[[C

.field private static sInstance:Lcom/oneplus/android/server/scene/ZenModeObserver;

.field private static whiteListInZenMode:Ljava/util/ArrayList;
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
    .locals 4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/scene/ZenModeObserver;->DBG:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/scene/ZenModeObserver;->whiteListInZenMode:Ljava/util/ArrayList;

    const/16 v0, 0xe

    new-array v0, v0, [[C

    const/16 v1, 0x12

    new-array v2, v1, [C

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/16 v2, 0x11

    new-array v2, v2, [C

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [C

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/16 v2, 0x19

    new-array v2, v2, [C

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v1, v1, [C

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x13

    new-array v1, v1, [C

    fill-array-data v1, :array_5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x15

    new-array v2, v1, [C

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const/16 v2, 0x1a

    new-array v2, v2, [C

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const/16 v2, 0x23

    new-array v2, v2, [C

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    const/16 v2, 0x20

    new-array v2, v2, [C

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v0, v3

    const/16 v2, 0x27

    new-array v2, v2, [C

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v0, v3

    const/16 v2, 0x18

    new-array v2, v2, [C

    fill-array-data v2, :array_b

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v1, v1, [C

    fill-array-data v1, :array_c

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/16 v1, 0xf

    new-array v1, v1, [C

    fill-array-data v1, :array_d

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/android/server/scene/ZenModeObserver;->sDefaultWhiteList:[[C

    invoke-static {}, Lcom/oneplus/android/server/scene/ZenModeObserver;->addDefaultWhiteList()V

    return-void

    nop

    :array_0
    .array-data 2
        0x36s
        0x3as
        0x38s
        0x7bs
        0x34s
        0x3bs
        0x31s
        0x27s
        0x3as
        0x3cs
        0x31s
        0x7bs
        0x31s
        0x3cs
        0x34s
        0x39s
        0x30s
        0x27s
    .end array-data

    :array_1
    .array-data 2
        0x36s
        0x3as
        0x38s
        0x7bs
        0x34s
        0x3bs
        0x31s
        0x27s
        0x3as
        0x3cs
        0x31s
        0x7bs
        0x25s
        0x3ds
        0x3as
        0x3bs
        0x30s
    .end array-data

    nop

    :array_2
    .array-data 2
        0x36s
        0x3as
        0x38s
        0x7bs
        0x3as
        0x3bs
        0x30s
        0x25s
        0x39s
        0x20s
        0x26s
        0x7bs
        0x31s
        0x3cs
        0x34s
        0x39s
        0x30s
        0x27s
    .end array-data

    :array_3
    .array-data 2
        0x36s
        0x3as
        0x38s
        0x7bs
        0x32s
        0x3as
        0x3as
        0x32s
        0x39s
        0x30s
        0x7bs
        0x34s
        0x3bs
        0x31s
        0x27s
        0x3as
        0x3cs
        0x31s
        0x7bs
        0x31s
        0x3cs
        0x34s
        0x39s
        0x30s
        0x27s
    .end array-data

    nop

    :array_4
    .array-data 2
        0x36s
        0x3as
        0x38s
        0x7bs
        0x3as
        0x3bs
        0x30s
        0x25s
        0x39s
        0x20s
        0x26s
        0x7bs
        0x36s
        0x34s
        0x38s
        0x30s
        0x27s
        0x34s
    .end array-data

    :array_5
    .array-data 2
        0x36s
        0x3as
        0x38s
        0x7bs
        0x3as
        0x3bs
        0x30s
        0x25s
        0x39s
        0x20s
        0x26s
        0x7bs
        0x32s
        0x34s
        0x39s
        0x39s
        0x30s
        0x27s
        0x2cs
    .end array-data

    nop

    :array_6
    .array-data 2
        0x36s
        0x3as
        0x38s
        0x7bs
        0x34s
        0x3bs
        0x31s
        0x27s
        0x3as
        0x3cs
        0x31s
        0x7bs
        0x30s
        0x38s
        0x30s
        0x27s
        0x32s
        0x30s
        0x3bs
        0x36s
        0x2cs
    .end array-data

    nop

    :array_7
    .array-data 2
        0x36s
        0x3as
        0x38s
        0x7bs
        0x34s
        0x3bs
        0x31s
        0x27s
        0x3as
        0x3cs
        0x31s
        0x7bs
        0x26s
        0x30s
        0x27s
        0x23s
        0x30s
        0x27s
        0x7bs
        0x21s
        0x30s
        0x39s
        0x30s
        0x36s
        0x3as
        0x38s
    .end array-data

    :array_8
    .array-data 2
        0x36s
        0x3as
        0x38s
        0x7bs
        0x32s
        0x3as
        0x3as
        0x32s
        0x39s
        0x30s
        0x7bs
        0x34s
        0x3bs
        0x31s
        0x27s
        0x3as
        0x3cs
        0x31s
        0x7bs
        0x25s
        0x34s
        0x36s
        0x3es
        0x34s
        0x32s
        0x30s
        0x3cs
        0x3bs
        0x26s
        0x21s
        0x34s
        0x39s
        0x39s
        0x30s
        0x27s
    .end array-data

    nop

    :array_9
    .array-data 2
        0x36s
        0x3as
        0x38s
        0x7bs
        0x34s
        0x3bs
        0x31s
        0x27s
        0x3as
        0x3cs
        0x31s
        0x7bs
        0x25s
        0x30s
        0x27s
        0x38s
        0x3cs
        0x26s
        0x26s
        0x3cs
        0x3as
        0x3bs
        0x36s
        0x3as
        0x3bs
        0x21s
        0x27s
        0x3as
        0x39s
        0x39s
        0x30s
        0x27s
    .end array-data

    :array_a
    .array-data 2
        0x36s
        0x3as
        0x38s
        0x7bs
        0x32s
        0x3as
        0x3as
        0x32s
        0x39s
        0x30s
        0x7bs
        0x34s
        0x3bs
        0x31s
        0x27s
        0x3as
        0x3cs
        0x31s
        0x7bs
        0x25s
        0x30s
        0x27s
        0x38s
        0x3cs
        0x26s
        0x26s
        0x3cs
        0x3as
        0x3bs
        0x36s
        0x3as
        0x3bs
        0x21s
        0x27s
        0x3as
        0x39s
        0x39s
        0x30s
        0x27s
    .end array-data

    nop

    :array_b
    .array-data 2
        0x36s
        0x3as
        0x38s
        0x7bs
        0x3as
        0x3bs
        0x30s
        0x25s
        0x39s
        0x20s
        0x26s
        0x7bs
        0x26s
        0x36s
        0x27s
        0x30s
        0x30s
        0x3bs
        0x27s
        0x30s
        0x36s
        0x3as
        0x27s
        0x31s
    .end array-data

    :array_c
    .array-data 2
        0x36s
        0x3as
        0x38s
        0x7bs
        0x3as
        0x3bs
        0x30s
        0x25s
        0x39s
        0x20s
        0x26s
        0x7bs
        0x37s
        0x27s
        0x3cs
        0x36s
        0x3es
        0x38s
        0x3as
        0x31s
        0x30s
    .end array-data

    nop

    :array_d
    .array-data 2
        0x36s
        0x3as
        0x38s
        0x7bs
        0x3as
        0x25s
        0x25s
        0x3as
        0x7bs
        0x36s
        0x34s
        0x38s
        0x30s
        0x27s
        0x34s
    .end array-data
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

.method private static addDefaultWhiteList()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/oneplus/android/server/scene/ZenModeObserver;->sDefaultWhiteList:[[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    const/16 v2, 0x55

    invoke-static {v1, v2}, Lcom/oneplus/android/server/scene/ZenModeObserver;->decrypted([CI)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oneplus/android/server/scene/ZenModeObserver;->whiteListInZenMode:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addPackageName(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/ZenModeObserver;->whiteListInZenMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final decrypted([CI)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-char v3, p0, v2

    xor-int/2addr v3, p1

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
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

.method public static isInWhiteList(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/ZenModeObserver;->whiteListInZenMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
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
