.class public Lcom/android/server/wm/OPAppSwitchStateDispatcher;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OPAppSwitchStateDispatcher"


# instance fields
.field public inBlackList:Z

.field public mDynamicRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/OPAppSwitchRuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mStaticIntecepter:Lcom/android/server/wm/OPAppSwitchRuleInfo;

.field public pkgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->mDynamicRules:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->inBlackList:Z

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->pkgName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addDynamicListener(Lcom/android/server/wm/OPAppSwitchRuleInfo;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerAppSwitchObserver addDynamicListener OK, pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPAppSwitchStateDispatcher"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->mDynamicRules:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public notifyActivityEnter(Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->inBlackList:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->mDynamicRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/OPAppSwitchRuleInfo;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/OPAppSwitchRuleInfo;->notifyActivityEnter(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->mDynamicRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->mStaticIntecepter:Lcom/android/server/wm/OPAppSwitchRuleInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/OPAppSwitchRuleInfo;->notifyActivityEnter(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-boolean p2, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->DEBUG:Z

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyActivityEnter static listener handled = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->pkgName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " enter = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPAppSwitchStateDispatcher"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    or-int/lit8 v1, v1, 0x1

    :cond_3
    return v1
.end method

.method public notifyActivityExit(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->inBlackList:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->mDynamicRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/OPAppSwitchRuleInfo;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/OPAppSwitchRuleInfo;->notifyActivityExit(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->mDynamicRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->mStaticIntecepter:Lcom/android/server/wm/OPAppSwitchRuleInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/OPAppSwitchRuleInfo;->notifyActivityExit(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-boolean p2, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->DEBUG:Z

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "notifyActivityExit static listener handled = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->pkgName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " className = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPAppSwitchStateDispatcher"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public notifyAppEnter(Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->inBlackList:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->mDynamicRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/OPAppSwitchRuleInfo;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/OPAppSwitchRuleInfo;->notifyAppEnter(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->mDynamicRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->mStaticIntecepter:Lcom/android/server/wm/OPAppSwitchRuleInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/OPAppSwitchRuleInfo;->notifyAppEnter(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-boolean p2, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->DEBUG:Z

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyActivityExit static listener handled = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->pkgName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " enter = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPAppSwitchStateDispatcher"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public notifyAppExit(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->inBlackList:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->mDynamicRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/OPAppSwitchRuleInfo;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/OPAppSwitchRuleInfo;->notifyAppExit(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->mDynamicRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->mStaticIntecepter:Lcom/android/server/wm/OPAppSwitchRuleInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/OPAppSwitchRuleInfo;->notifyAppExit(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-boolean p2, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->DEBUG:Z

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "notifyAppExit static listener handled = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->pkgName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " pkg = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPAppSwitchStateDispatcher"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public removeDynamicListener(Lcom/android/server/wm/OPAppSwitchRuleInfo;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->mDynamicRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    sget-boolean v2, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterAppSwitchObserver ok, pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OPAppSwitchStateDispatcher"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->mDynamicRules:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/OPAppSwitchRuleInfo;

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->mDynamicRules:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, v0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->observer:Lcom/android/server/wm/IOPAppSwitchObserver;

    invoke-interface {p0}, Lcom/android/server/wm/IOPAppSwitchObserver;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    iget-object p1, v0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public setBlackItem(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->inBlackList:Z

    return-void
.end method

.method public setDefaultMatchConfig(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->mDynamicRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/OPAppSwitchRuleInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/OPAppSwitchRuleInfo;->setDefaultMatchConfig(ZZ)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->mStaticIntecepter:Lcom/android/server/wm/OPAppSwitchRuleInfo;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/OPAppSwitchRuleInfo;->setDefaultMatchConfig(ZZ)V

    :cond_1
    return-void
.end method

.method public setStaticRule(Lcom/android/server/wm/OPAppSwitchRuleInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->mStaticIntecepter:Lcom/android/server/wm/OPAppSwitchRuleInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "OPAppSwitchRuleInfo = { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
