.class Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails$2;
.super Ljava/lang/Object;
.source "InteractAcrossProfilesDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->showConsentDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails$2;->this$0:Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 281
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails$2;->this$0:Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;

    const/16 p2, 0xaa

    invoke-static {p1, p2}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->access$000(Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;I)V

    .line 282
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails$2;->this$0:Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->access$100(Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;Z)V

    .line 283
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails$2;->this$0:Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;

    invoke-virtual {p1}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->refreshUi()Z

    .line 284
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails$2;->this$0:Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;

    invoke-static {p1}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->access$200(Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 285
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails$2;->this$0:Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;

    invoke-static {p0, p2}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;->access$300(Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;Z)V

    :cond_0
    return-void
.end method
