.class public interface abstract Lcom/android/settings/gestures/AssistGestureFeatureProvider;
.super Ljava/lang/Object;
.source "AssistGestureFeatureProvider.java"


# virtual methods
.method public abstract getControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isSensorAvailable(Landroid/content/Context;)Z
.end method

.method public abstract isSupported(Landroid/content/Context;)Z
.end method
