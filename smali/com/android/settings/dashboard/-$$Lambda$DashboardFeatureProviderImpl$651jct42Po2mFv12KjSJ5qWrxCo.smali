.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$651jct42Po2mFv12KjSJ5qWrxCo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/preference/Preference;

.field public final synthetic f$1:Landroid/graphics/drawable/Icon;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/Preference;Landroid/graphics/drawable/Icon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$651jct42Po2mFv12KjSJ5qWrxCo;->f$0:Landroidx/preference/Preference;

    iput-object p2, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$651jct42Po2mFv12KjSJ5qWrxCo;->f$1:Landroid/graphics/drawable/Icon;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$651jct42Po2mFv12KjSJ5qWrxCo;->f$0:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$651jct42Po2mFv12KjSJ5qWrxCo;->f$1:Landroid/graphics/drawable/Icon;

    invoke-static {v0, p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$bindIcon$10(Landroidx/preference/Preference;Landroid/graphics/drawable/Icon;)V

    return-void
.end method
