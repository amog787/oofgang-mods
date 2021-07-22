.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$wKqnYfOZzMoUQIRu-R54oqo7Pj8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;ZLandroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$wKqnYfOZzMoUQIRu-R54oqo7Pj8;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iput-object p2, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$wKqnYfOZzMoUQIRu-R54oqo7Pj8;->f$1:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$wKqnYfOZzMoUQIRu-R54oqo7Pj8;->f$2:Z

    iput-object p4, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$wKqnYfOZzMoUQIRu-R54oqo7Pj8;->f$3:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$wKqnYfOZzMoUQIRu-R54oqo7Pj8;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iget-object v1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$wKqnYfOZzMoUQIRu-R54oqo7Pj8;->f$1:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$wKqnYfOZzMoUQIRu-R54oqo7Pj8;->f$2:Z

    iget-object p0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$wKqnYfOZzMoUQIRu-R54oqo7Pj8;->f$3:Landroidx/preference/Preference;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$onCheckedChanged$7$DashboardFeatureProviderImpl(Landroid/net/Uri;ZLandroidx/preference/Preference;)V

    return-void
.end method
