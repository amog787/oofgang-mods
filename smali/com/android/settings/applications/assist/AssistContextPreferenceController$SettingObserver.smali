.class Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;
.super Lcom/android/settings/applications/assist/AssistSettingObserver;
.source "AssistContextPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/assist/AssistContextPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/applications/assist/AssistContextPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/assist/AssistContextPreferenceController;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;->this$0:Lcom/android/settings/applications/assist/AssistContextPreferenceController;

    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistSettingObserver;-><init>()V

    const-string p1, "assist_structure_enabled"

    .line 127
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;->URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected getSettingUris()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    .line 131
    iget-object p0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;->URI:Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public onSettingChange()V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;->this$0:Lcom/android/settings/applications/assist/AssistContextPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->access$000(Lcom/android/settings/applications/assist/AssistContextPreferenceController;)V

    return-void
.end method
