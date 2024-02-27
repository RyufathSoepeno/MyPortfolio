.class public final synthetic Lf0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lf0/c$h;


# direct methods
.method public synthetic constructor <init>(Lf0/c$h;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/d;->e:Lf0/c$h;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lf0/d;->e:Lf0/c$h;

    invoke-static {v0}, Lf0/c$h;->b(Lf0/c$h;)V

    return-void
.end method
