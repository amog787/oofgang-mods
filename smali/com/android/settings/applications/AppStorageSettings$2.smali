.class Lcom/android/settings/applications/AppStorageSettings$2;
.super Ljava/lang/Object;
.source "AppStorageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/AppStorageSettings;->createDialog(II)Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppStorageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$2;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 507
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$2;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    iget-object p1, p1, Lcom/android/settings/applications/AppStorageSettings;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 509
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings$2;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-virtual {p0, p2}, Lcom/android/settings/applications/AppInfoBase;->setIntentAndFinish(Z)V

    return-void
.end method
