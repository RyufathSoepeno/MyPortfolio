.class Ld/f$j$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/f$j;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/f$j;


# direct methods
.method constructor <init>(Ld/f$j;)V
    .registers 2

    iput-object p1, p0, Ld/f$j$a;->a:Ld/f$j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    iget-object p1, p0, Ld/f$j$a;->a:Ld/f$j;

    invoke-virtual {p1}, Ld/f$j;->d()V

    return-void
.end method
