.class public Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin;
.super Landroid/database/ContentObserver;
.source "GlobalBubblePermissionObserverMixin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin$Listener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin$Listener;)V
    .locals 2

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 37
    iput-object p1, p0, Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin;->mListener:Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin$Listener;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin;->mListener:Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin$Listener;

    if-eqz p0, :cond_0

    .line 44
    invoke-interface {p0}, Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin$Listener;->onGlobalBubblePermissionChanged()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_bubbles"

    .line 50
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settings/notification/app/GlobalBubblePermissionObserverMixin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
