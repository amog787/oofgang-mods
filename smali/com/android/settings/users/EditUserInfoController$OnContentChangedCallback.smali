.class public interface abstract Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/EditUserInfoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnContentChangedCallback"
.end annotation


# virtual methods
.method public abstract onLabelChanged(Landroid/os/UserHandle;Ljava/lang/CharSequence;)V
.end method

.method public abstract onPhotoChanged(Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;)V
.end method
