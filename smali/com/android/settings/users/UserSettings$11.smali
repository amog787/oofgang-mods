.class Lcom/android/settings/users/UserSettings$11;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    .line 686
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$11;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLabelChanged(Landroid/os/UserHandle;Ljava/lang/CharSequence;)V
    .locals 2

    .line 701
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$11;->this$0:Lcom/android/settings/users/UserSettings;

    iget-object v0, v0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 702
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$11;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {p0}, Lcom/android/settings/users/UserSettings;->access$600(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    return-void
.end method

.method public onPhotoChanged(Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 689
    new-instance v0, Lcom/android/settings/users/UserSettings$11$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/users/UserSettings$11$1;-><init>(Lcom/android/settings/users/UserSettings$11;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 696
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$11;->this$0:Lcom/android/settings/users/UserSettings;

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
