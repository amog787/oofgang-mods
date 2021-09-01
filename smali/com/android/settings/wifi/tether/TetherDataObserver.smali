.class public Lcom/android/settings/wifi/tether/TetherDataObserver;
.super Landroid/database/ContentObserver;
.source "TetherDataObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/tether/TetherDataObserver$OnTetherDataChangeCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/wifi/tether/TetherDataObserver$OnTetherDataChangeCallback;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/tether/TetherDataObserver$OnTetherDataChangeCallback;)V
    .locals 1

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 25
    iput-object p1, p0, Lcom/android/settings/wifi/tether/TetherDataObserver;->mCallback:Lcom/android/settings/wifi/tether/TetherDataObserver$OnTetherDataChangeCallback;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 31
    iget-object p0, p0, Lcom/android/settings/wifi/tether/TetherDataObserver;->mCallback:Lcom/android/settings/wifi/tether/TetherDataObserver$OnTetherDataChangeCallback;

    if-eqz p0, :cond_0

    .line 32
    invoke-interface {p0}, Lcom/android/settings/wifi/tether/TetherDataObserver$OnTetherDataChangeCallback;->onTetherDataChange()V

    :cond_0
    return-void
.end method
