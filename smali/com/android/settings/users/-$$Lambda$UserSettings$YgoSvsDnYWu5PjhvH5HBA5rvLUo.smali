.class public final synthetic Lcom/android/settings/users/-$$Lambda$UserSettings$YgoSvsDnYWu5PjhvH5HBA5rvLUo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/users/UserSettings;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$YgoSvsDnYWu5PjhvH5HBA5rvLUo;->f$0:Lcom/android/settings/users/UserSettings;

    iput p2, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$YgoSvsDnYWu5PjhvH5HBA5rvLUo;->f$1:I

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$YgoSvsDnYWu5PjhvH5HBA5rvLUo;->f$0:Lcom/android/settings/users/UserSettings;

    iget p0, p0, Lcom/android/settings/users/-$$Lambda$UserSettings$YgoSvsDnYWu5PjhvH5HBA5rvLUo;->f$1:I

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/users/UserSettings;->lambda$updateUserList$0$UserSettings(ILandroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
