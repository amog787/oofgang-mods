.class Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings$1;
.super Ljava/lang/Object;
.source "InteractAcrossProfilesSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings;

.field final synthetic val$appInfo:Landroid/content/pm/ApplicationInfo;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings$1;->this$0:Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings$1;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 7

    .line 93
    const-class v0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesDetails;

    sget v1, Lcom/android/settings/R$string;->interact_across_profiles_title:I

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings$1;->val$packageName:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings$1;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings$1;->this$0:Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings;

    .line 99
    invoke-virtual {v4}, Lcom/android/settings/applications/specialaccess/interactacrossprofiles/InteractAcrossProfilesSettings;->getMetricsCategory()I

    move-result v6

    const/4 v5, -0x1

    .line 93
    invoke-static/range {v0 .. v6}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroidx/fragment/app/Fragment;II)V

    const/4 p0, 0x1

    return p0
.end method
