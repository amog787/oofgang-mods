.class Lcom/android/settings/users/EditUserPhotoController$2;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/EditUserPhotoController;->showUpdatePhotoPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/EditUserPhotoController;


# direct methods
.method constructor <init>(Lcom/android/settings/users/EditUserPhotoController;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/settings/users/EditUserPhotoController$2;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/settings/users/EditUserPhotoController$2;->this$0:Lcom/android/settings/users/EditUserPhotoController;

    invoke-static {p0}, Lcom/android/settings/users/EditUserPhotoController;->access$100(Lcom/android/settings/users/EditUserPhotoController;)V

    return-void
.end method
