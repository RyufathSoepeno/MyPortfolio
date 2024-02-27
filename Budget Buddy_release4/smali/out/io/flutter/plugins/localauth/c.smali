.class public final synthetic Lio/flutter/plugins/localauth/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic e:Lio/flutter/plugins/localauth/AuthenticationHelper;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/localauth/AuthenticationHelper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/localauth/c;->e:Lio/flutter/plugins/localauth/AuthenticationHelper;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lio/flutter/plugins/localauth/c;->e:Lio/flutter/plugins/localauth/AuthenticationHelper;

    invoke-static {v0, p1, p2}, Lio/flutter/plugins/localauth/AuthenticationHelper;->k(Lio/flutter/plugins/localauth/AuthenticationHelper;Landroid/content/DialogInterface;I)V

    return-void
.end method
