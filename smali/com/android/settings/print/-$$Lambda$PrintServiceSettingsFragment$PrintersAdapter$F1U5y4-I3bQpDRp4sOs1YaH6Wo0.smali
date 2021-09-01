.class public final synthetic Lcom/android/settings/print/-$$Lambda$PrintServiceSettingsFragment$PrintersAdapter$F1U5y4-I3bQpDRp4sOs1YaH6Wo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/print/-$$Lambda$PrintServiceSettingsFragment$PrintersAdapter$F1U5y4-I3bQpDRp4sOs1YaH6Wo0;->f$0:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    iput p2, p0, Lcom/android/settings/print/-$$Lambda$PrintServiceSettingsFragment$PrintersAdapter$F1U5y4-I3bQpDRp4sOs1YaH6Wo0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/print/-$$Lambda$PrintServiceSettingsFragment$PrintersAdapter$F1U5y4-I3bQpDRp4sOs1YaH6Wo0;->f$0:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    iget p0, p0, Lcom/android/settings/print/-$$Lambda$PrintServiceSettingsFragment$PrintersAdapter$F1U5y4-I3bQpDRp4sOs1YaH6Wo0;->f$1:I

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->lambda$onBindViewHolder$0$PrintServiceSettingsFragment$PrintersAdapter(ILandroid/view/View;)V

    return-void
.end method
