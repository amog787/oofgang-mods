.class public final synthetic Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$LaYZZxMZM6DZ-ERThyqEIte482Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/oneplus/settings/aboutphone/OpenIdSettings;

.field public final synthetic f$1:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/settings/aboutphone/OpenIdSettings;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$LaYZZxMZM6DZ-ERThyqEIte482Y;->f$0:Lcom/oneplus/settings/aboutphone/OpenIdSettings;

    iput-object p2, p0, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$LaYZZxMZM6DZ-ERThyqEIte482Y;->f$1:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$LaYZZxMZM6DZ-ERThyqEIte482Y;->f$0:Lcom/oneplus/settings/aboutphone/OpenIdSettings;

    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/-$$Lambda$OpenIdSettings$LaYZZxMZM6DZ-ERThyqEIte482Y;->f$1:Landroid/widget/Button;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oneplus/settings/aboutphone/OpenIdSettings;->lambda$onCreate$1$OpenIdSettings(Landroid/widget/Button;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
