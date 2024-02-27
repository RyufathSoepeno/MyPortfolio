.class public final synthetic Lio/flutter/plugins/localauth/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lio/flutter/plugins/localauth/AuthenticationHelper;

.field public final synthetic f:Landroidx/biometric/BiometricPrompt;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/localauth/AuthenticationHelper;Landroidx/biometric/BiometricPrompt;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/localauth/a;->e:Lio/flutter/plugins/localauth/AuthenticationHelper;

    iput-object p2, p0, Lio/flutter/plugins/localauth/a;->f:Landroidx/biometric/BiometricPrompt;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lio/flutter/plugins/localauth/a;->e:Lio/flutter/plugins/localauth/AuthenticationHelper;

    iget-object v1, p0, Lio/flutter/plugins/localauth/a;->f:Landroidx/biometric/BiometricPrompt;

    invoke-static {v0, v1}, Lio/flutter/plugins/localauth/AuthenticationHelper;->m(Lio/flutter/plugins/localauth/AuthenticationHelper;Landroidx/biometric/BiometricPrompt;)V

    return-void
.end method
