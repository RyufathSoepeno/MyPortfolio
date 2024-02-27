.class public final synthetic Lb0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lb0/m;

.field public final synthetic f:Lb0/k;


# direct methods
.method public synthetic constructor <init>(Lb0/m;Lb0/k;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/l;->e:Lb0/m;

    iput-object p2, p0, Lb0/l;->f:Lb0/k;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lb0/l;->e:Lb0/m;

    iget-object v1, p0, Lb0/l;->f:Lb0/k;

    invoke-static {v0, v1}, Lb0/m;->a(Lb0/m;Lb0/k;)V

    return-void
.end method
