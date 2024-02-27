.class Landroidx/biometric/e$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
.end annotation


# direct methods
.method static a(Landroid/app/KeyguardManager;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
