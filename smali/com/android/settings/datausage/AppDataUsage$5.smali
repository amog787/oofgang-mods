.class Lcom/android/settings/datausage/AppDataUsage$5;
.super Ljava/lang/Object;
.source "AppDataUsage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/AppDataUsage;->showRestrictBackgroundDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/AppDataUsage;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0

    .line 791
    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$5;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 794
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$5;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->access$1300(Lcom/android/settings/datausage/AppDataUsage;)I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 795
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$5;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0, p2}, Lcom/android/settings/datausage/AppDataUsage;->access$1302(Lcom/android/settings/datausage/AppDataUsage;I)I

    .line 796
    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage$5;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p2}, Lcom/android/settings/datausage/AppDataUsage;->access$1400(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/RestrictedPreference;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage$5;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p2}, Lcom/android/settings/datausage/AppDataUsage;->access$1500(Lcom/android/settings/datausage/AppDataUsage;)[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$5;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->access$1300(Lcom/android/settings/datausage/AppDataUsage;)I

    move-result v0

    if-le p2, v0, :cond_0

    .line 797
    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage$5;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p2}, Lcom/android/settings/datausage/AppDataUsage;->access$1400(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/RestrictedPreference;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$5;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->access$1500(Lcom/android/settings/datausage/AppDataUsage;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage$5;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v1}, Lcom/android/settings/datausage/AppDataUsage;->access$1300(Lcom/android/settings/datausage/AppDataUsage;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 798
    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage$5;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p2}, Lcom/android/settings/datausage/AppDataUsage;->access$1300(Lcom/android/settings/datausage/AppDataUsage;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/settings/datausage/AppDataUsage;->changeRestrictBackgroundType(I)V

    .line 799
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$5;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->updateUssPreference()V

    .line 802
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
