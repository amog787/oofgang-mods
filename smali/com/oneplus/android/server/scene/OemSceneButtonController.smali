.class public Lcom/oneplus/android/server/scene/OemSceneButtonController;
.super Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/scene/OemSceneButtonController$zta;,
        Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;,
        Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final KEY_BLOCK:Ljava/lang/String; = "keyBlock"

.field private static final OPERATED:Ljava/lang/String; = "1"

.field public static final RULE_KEYBLOCKING_ZENMODE:Lcom/oneplus/core/oimc/OIMCRule;

.field private static final SCREEN_GESTURE_OPERATED:Ljava/lang/String; = "persist.sys.osbc.operated"

.field private static final SEPARATOR:Ljava/lang/String; = "|"

.field private static final SPECIAL_FOR_HIDENAVBAR:Ljava/lang/String; = "Special for hideNavbar"

.field private static final SPECIAL_FOR_SHOWNAVBAR:Ljava/lang/String; = "Special for showNavbar"

.field private static final SPECIAL_PARAM:Ljava/lang/String; = "specialParam"

.field private static final TAG:Ljava/lang/String; = "OemSceneButtonController"

.field private static final VALUE_CONFIG:I = 0x3

.field private static final VALUE_OFF_INT:I = 0x0

.field private static final VALUE_OFF_STR:Ljava/lang/String; = "0"

.field private static final VALUE_ON_INT:I = 0x1

.field private static final VALUE_ON_STR:Ljava/lang/String; = "1"

.field private static final VALUE_START:I = 0x1

.field private static final VALUE_STOP:I = 0x2

.field private static sInstance:Lcom/oneplus/android/server/scene/OemSceneButtonController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGestureButtonBlockListener:Lcom/oneplus/android/server/scene/OemSceneButtonController$zta;

.field private mHandler:Landroid/os/Handler;

.field protected mIsFunctionOn:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mUser:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->DBG:Z

    new-instance v0, Lcom/oneplus/core/oimc/OIMCRule;

    const-string v1, "ZenMode"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "keyBlock"

    const/4 v5, 0x0

    aput-object v3, v2, v5

    const/16 v3, 0xbb

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    sget-object v1, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->zta:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->makeParam([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v5

    const-string v2, "KeyBlocking"

    const/4 v3, 0x1

    const/16 v6, 0x46

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->RULE_KEYBLOCKING_ZENMODE:Lcom/oneplus/core/oimc/OIMCRule;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->mIsFunctionOn:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->mUser:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->mGestureButtonBlockListener:Lcom/oneplus/android/server/scene/OemSceneButtonController$zta;

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$1;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/OemSceneButtonController$1;-><init>(Lcom/oneplus/android/server/scene/OemSceneButtonController;)V

    const-class p0, Lcom/oneplus/android/server/scene/OemSceneButtonController;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneButtonController;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->sInstance:Lcom/oneplus/android/server/scene/OemSceneButtonController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneButtonController;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/OemSceneButtonController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->sInstance:Lcom/oneplus/android/server/scene/OemSceneButtonController;

    :cond_0
    sget-object p0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->sInstance:Lcom/oneplus/android/server/scene/OemSceneButtonController;

    return-object p0
.end method

.method private getOnScreenNaviBarEnable()Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "navigation_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-eq v0, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private getSpecialParams(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    :try_start_0
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, p1, v1

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "specialParam"

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    return-object p0
.end method

.method private handleBlockScreenGestures()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneButtonController"

    const-string v1, "handleBlockScreenGestures"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->mGestureButtonBlockListener:Lcom/oneplus/android/server/scene/OemSceneButtonController$zta;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oneplus/android/server/scene/OemSceneButtonController$zta;->zta(Z)V

    const-string v0, "persist.sys.osbc.operated"

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private handleRecoverScreenGestures()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneButtonController"

    const-string v1, "handleRecoverScreenGestures"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->mGestureButtonBlockListener:Lcom/oneplus/android/server/scene/OemSceneButtonController$zta;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/android/server/scene/OemSceneButtonController$zta;->zta(Z)V

    const-string v0, "persist.sys.osbc.operated"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private isBlockScreenGestures(Ljava/lang/Object;)Z
    .locals 9

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    instance-of v3, p1, [Ljava/lang/String;

    if-eqz v3, :cond_3

    check-cast p1, [Ljava/lang/String;

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_3

    aget-object v4, p1, v3

    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "keyBlock"

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    array-length v5, v4

    if-ge v5, v0, :cond_0

    return v2

    :cond_0
    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x2

    :goto_1
    array-length v8, v4

    if-ge v7, v8, :cond_1

    aget-object v8, v4, v7

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/16 p1, 0xbb

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->zta:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->sis:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_4
    if-eqz v3, :cond_7

    sget-object p1, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->zta:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->sis:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_5
    if-eqz p0, :cond_7

    sget-object p1, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->zta:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->sis:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_7

    :cond_6
    return v1

    :cond_7
    return v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method private isNaviBarHidden()Z
    .locals 3

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;->rtg:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "oem_acc_key_lock_mode"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isOperatedScreenGestures()Z
    .locals 1

    const-string p0, "persist.sys.osbc.operated"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs makeParam([Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    aget-object v3, p0, v1

    const-string v4, "keyBlock"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, "|"

    if-eqz v3, :cond_4

    array-length v1, p0

    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p0, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    array-length v1, p0

    if-ge v5, v1, :cond_3

    aget-object v1, p0, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    sub-int/2addr v1, v6

    if-eq v5, v1, :cond_2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    aget-object v1, p0, v1

    const-string v3, "specialParam"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    array-length v1, p0

    if-ge v1, v5, :cond_5

    return-object v2

    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v6

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v2
.end method

.method private operateSpecialParams(Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    if-nez p1, :cond_1

    sget-boolean p0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->DBG:Z

    if-eqz p0, :cond_0

    const-string p0, "OemSceneButtonController"

    const-string p1, "operateSpecialParams list is null, return"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Special for hideNavbar"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->isNaviBarHidden()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->setEnable(Z)V

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->isNaviBarHidden()Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->setEnable(Z)V

    :cond_5
    const/4 p1, 0x2

    if-ne p2, p1, :cond_6

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->isNaviBarHidden()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->setEnable(Z)V

    :cond_6
    return-void
.end method

.method private setKeyMode(I)V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "oem_acc_key_lock_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setProptValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string p0, ""

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean v0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->DBG:Z

    const-string v1, "OemSceneButtonController"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set system property key:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |value:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |curValue:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "failed to set system property e:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onConfig(Ljava/lang/String;)I
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneButtonController"

    const-string v1, "[scene] KeyBlocking: config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->getSpecialParams(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->operateSpecialParams(Ljava/util/ArrayList;I)V

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->isBlockScreenGestures(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->handleBlockScreenGestures()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->isBlockScreenGestures(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->isOperatedScreenGestures()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->handleRecoverScreenGestures()V

    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/android/server/policy/OpPhoneWindowManager;->setKeyLocks(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onStart([Ljava/lang/String;)I
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneButtonController"

    const-string v1, "[scene] KeyBlocking: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->getSpecialParams(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->operateSpecialParams(Ljava/util/ArrayList;I)V

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->isBlockScreenGestures(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->handleBlockScreenGestures()V

    :cond_1
    invoke-static {p1}, Lcom/android/server/policy/OpPhoneWindowManager;->setKeyLocks(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onStop([Ljava/lang/String;)I
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneButtonController"

    const-string v1, "[scene] KeyBlocking: stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->getSpecialParams(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->operateSpecialParams(Ljava/util/ArrayList;I)V

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->isOperatedScreenGestures()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->handleRecoverScreenGestures()V

    :cond_1
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/server/policy/OpPhoneWindowManager;->setKeyLocks(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public registerGestureButtonBlockListener(Lcom/oneplus/android/server/scene/OemSceneButtonController$zta;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->mGestureButtonBlockListener:Lcom/oneplus/android/server/scene/OemSceneButtonController$zta;

    return-void
.end method

.method public setEnable(Z)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;->rtg:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->setKeyMode(I)V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->getOnScreenNaviBarEnable()Z

    move-result p1

    sget-boolean v0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[scene] onScreenNaviBarEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OemSceneButtonController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    sget-object p1, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;->ssp:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;->zta:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public updateFunctionRule(I)V
    .locals 4

    const-string v0, "OemSceneButtonController"

    :try_start_0
    sget-boolean v1, Lcom/oneplus/android/server/scene/OemSceneButtonController;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] mUser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->mUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", update for user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFunctionRule error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iput p1, p0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->mUser:I

    return-void
.end method
