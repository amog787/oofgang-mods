.class Lcom/android/settings/development/compat/PlatformCompatDashboard$CompatChangePreferenceChangeListener;
.super Ljava/lang/Object;
.source "PlatformCompatDashboard.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/compat/PlatformCompatDashboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompatChangePreferenceChangeListener"
.end annotation


# instance fields
.field private final changeId:J

.field final synthetic this$0:Lcom/android/settings/development/compat/PlatformCompatDashboard;


# direct methods
.method constructor <init>(Lcom/android/settings/development/compat/PlatformCompatDashboard;J)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard$CompatChangePreferenceChangeListener;->this$0:Lcom/android/settings/development/compat/PlatformCompatDashboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-wide p2, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard$CompatChangePreferenceChangeListener;->changeId:J

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 286
    :try_start_0
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 287
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 288
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 289
    iget-wide v1, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard$CompatChangePreferenceChangeListener;->changeId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 291
    :cond_0
    iget-wide v1, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard$CompatChangePreferenceChangeListener;->changeId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 293
    :goto_0
    new-instance p2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    new-instance v1, Landroid/compat/Compatibility$ChangeConfig;

    invoke-direct {v1, p1, v0}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {p2, v1}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    .line 295
    iget-object p1, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard$CompatChangePreferenceChangeListener;->this$0:Lcom/android/settings/development/compat/PlatformCompatDashboard;

    invoke-virtual {p1}, Lcom/android/settings/development/compat/PlatformCompatDashboard;->getPlatformCompat()Lcom/android/internal/compat/IPlatformCompat;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard$CompatChangePreferenceChangeListener;->this$0:Lcom/android/settings/development/compat/PlatformCompatDashboard;

    iget-object p0, p0, Lcom/android/settings/development/compat/PlatformCompatDashboard;->mSelectedApp:Ljava/lang/String;

    invoke-interface {p1, p2, p0}, Lcom/android/internal/compat/IPlatformCompat;->setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 297
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method
