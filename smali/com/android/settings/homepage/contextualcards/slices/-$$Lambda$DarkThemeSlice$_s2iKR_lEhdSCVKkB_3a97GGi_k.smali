.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$DarkThemeSlice$_s2iKR_lEhdSCVKkB_3a97GGi_k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$DarkThemeSlice$_s2iKR_lEhdSCVKkB_3a97GGi_k;->f$0:Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;

    iput-boolean p2, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$DarkThemeSlice$_s2iKR_lEhdSCVKkB_3a97GGi_k;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$DarkThemeSlice$_s2iKR_lEhdSCVKkB_3a97GGi_k;->f$0:Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;

    iget-boolean p0, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$DarkThemeSlice$_s2iKR_lEhdSCVKkB_3a97GGi_k;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->lambda$onNotifyChange$0$DarkThemeSlice(Z)V

    return-void
.end method
