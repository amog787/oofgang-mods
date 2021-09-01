.class public abstract Lcom/android/settings/applications/assist/AssistSettingObserver;
.super Landroid/database/ContentObserver;
.source "AssistSettingObserver.java"


# instance fields
.field private final ASSIST_URI:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "assistant"

    .line 33
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistSettingObserver;->ASSIST_URI:Landroid/net/Uri;

    return-void
.end method

.method private synthetic lambda$onChange$0()V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistSettingObserver;->onSettingChange()V

    return-void
.end method


# virtual methods
.method protected abstract getSettingUris()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end method

.method public synthetic lambda$onChange$0$AssistSettingObserver()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistSettingObserver;->lambda$onChange$0()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 55
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistSettingObserver;->getSettingUris()Ljava/util/List;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistSettingObserver;->ASSIST_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 62
    new-instance p1, Lcom/android/settings/applications/assist/-$$Lambda$AssistSettingObserver$iBFvDXS30QMXzEK-zAgHqcs78mE;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/assist/-$$Lambda$AssistSettingObserver$iBFvDXS30QMXzEK-zAgHqcs78mE;-><init>(Lcom/android/settings/applications/assist/AssistSettingObserver;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public abstract onSettingChange()V
.end method

.method public register(Landroid/content/ContentResolver;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 41
    iget-object p2, p0, Lcom/android/settings/applications/assist/AssistSettingObserver;->ASSIST_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistSettingObserver;->getSettingUris()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 44
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 45
    invoke-virtual {p1, v1, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method
