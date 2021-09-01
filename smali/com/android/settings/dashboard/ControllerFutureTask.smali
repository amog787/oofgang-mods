.class public Lcom/android/settings/dashboard/ControllerFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "ControllerFutureTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mController:Lcom/android/settingslib/core/AbstractPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/ControllerTask;Ljava/lang/Void;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 30
    invoke-virtual {p1}, Lcom/android/settings/dashboard/ControllerTask;->getController()Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dashboard/ControllerFutureTask;->mController:Lcom/android/settingslib/core/AbstractPreferenceController;

    return-void
.end method


# virtual methods
.method getController()Lcom/android/settingslib/core/AbstractPreferenceController;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settings/dashboard/ControllerFutureTask;->mController:Lcom/android/settingslib/core/AbstractPreferenceController;

    return-object p0
.end method
