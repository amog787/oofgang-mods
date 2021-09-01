.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$9yfkfZlETf1BygVuDmLc47Z008Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/preference/PreferenceScreen;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$9yfkfZlETf1BygVuDmLc47Z008Y;->f$0:Landroidx/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$9yfkfZlETf1BygVuDmLc47Z008Y;->f$0:Landroidx/preference/PreferenceScreen;

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-static {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$displayResourceTilesToScreen$7(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method
