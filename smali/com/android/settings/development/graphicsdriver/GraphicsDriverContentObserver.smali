.class public Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;
.super Landroid/database/ContentObserver;
.source "GraphicsDriverContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver$OnGraphicsDriverContentChangedListener;
    }
.end annotation


# instance fields
.field mListener:Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver$OnGraphicsDriverContentChangedListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver$OnGraphicsDriverContentChangedListener;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 41
    iput-object p2, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;->mListener:Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver$OnGraphicsDriverContentChangedListener;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 47
    iget-object p0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;->mListener:Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver$OnGraphicsDriverContentChangedListener;

    invoke-interface {p0}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver$OnGraphicsDriverContentChangedListener;->onGraphicsDriverContentChanged()V

    return-void
.end method

.method public register(Landroid/content/ContentResolver;)V
    .locals 2

    const-string v0, "game_driver_all_apps"

    .line 55
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister(Landroid/content/ContentResolver;)V
    .locals 0

    .line 62
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
